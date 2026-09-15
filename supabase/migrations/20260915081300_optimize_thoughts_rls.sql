-- Keep the service-role policy semantically identical while evaluating
-- auth.role() once per statement instead of once per row.
ALTER POLICY "Service role full access"
  ON public.thoughts
  USING ((SELECT auth.role()) = 'service_role'::text)
  WITH CHECK ((SELECT auth.role()) = 'service_role'::text);
